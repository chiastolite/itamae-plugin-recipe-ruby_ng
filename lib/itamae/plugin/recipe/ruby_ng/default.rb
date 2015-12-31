define :ruby_ng, version: '2.2', gems: [] do
  package 'software-properties-common'

  execute 'apt' do
    command 'apt-add-repository -y ppa:brightbox/ruby-ng; apt-get update'
    not_if 'grep -q -r brightbox/ruby-ng /etc/apt/sources.list.d/'
  end

  ruby_package = "ruby#{params[:version]}"
  package ruby_package
  package "#{ruby_package}-dev"

  package 'ruby-switch'
  execute 'switch ruby' do
    command "ruby-switch --set #{ruby_package}"
    not_if "ruby-switch --check | grep 'Currently using: #{ruby_package}'"
  end

  params[:gems].each do |gem|
    execute "install gems: #{gem}" do
      command "gem install #{gem}"
      not_if "gem list #{gem} | grep -e '^#{gem} '"
    end
  end
end
