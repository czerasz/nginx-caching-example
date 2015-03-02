#!/usr/bin/ruby

require 'sinatra'

get '/*' do
    out = "<h1>Current Time Is</h1>" + "\n"

    # Get current time
    now = Time.now
    current_path = request.fullpath

    out += '<p>'+ now.strftime("%Y.%d.%m %H:%M:%S") +'</p>' + "\n"
    out += '<p>'+ current_path +'</p>' + "\n"

    return out
end