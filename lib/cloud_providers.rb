require File.dirname(__FILE__)+"/cloud_providers/cloud_provider"
require File.dirname(__FILE__)+"/cloud_providers/cloud_provider_instance"

=begin rdoc
  CloudProvider is the base class for cloud computing services such as Ec2, Eucalyptus - where your servers run.
=end
module CloudProviders

  # List of all defined cloud_providers
  def self.all
    @all ||= []
  end

end

%w(ec2).each do |lib|
  require "cloud_providers/#{lib}/#{lib}"
end