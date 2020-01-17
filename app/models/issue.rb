require 'rubygems'
require 'active_resource'

class Issue < ActiveResource::Base
  self.site = 'http://10.0.1.233:32771'
  self.headers['X-Redmine-API-Key'] = 'a6c746a5c30e1279734674f900568176bbacce6d'
  self.include_root_in_json = true
  self.format = ::JsonFormatter.new(:issues)
end