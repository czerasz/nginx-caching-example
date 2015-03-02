#!/usr/bin/ruby

require 'sinatra'

get '/*' do
    out = "<h1>Current Time Is</h1>"

    # Get current time
    now = Time.now
    
    out += '<p>'+ now.strftime("%Y.%d.%m %H:%M:%S") +'</p>' + "\n"

    return out
end