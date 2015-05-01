class SortController < ApplicationController
  def comments
  	require 'net/http'
  	require 'json'

  	source = "https://hacker-news.firebaseio.com/v0/topstories.json"
   	resp = Net::HTTP.get_response(URI.parse(source))
   	data = resp.body
   	result = JSON.parse(data)
   	result = result[0..29]

   	_items = []
   	result.each do |item|
		source = "https://hacker-news.firebaseio.com/v0/item/#{item}.json"
   		resp = Net::HTTP.get_response(URI.parse(source))
   		data = resp.body
   		result = JSON.parse(data)

   		if result["descendants"]
   			_c = result["descendants"]
   		else
   			_c = 0
   		end

   		i = {
   			:comments => _c,
   			:url => result["url"],
   			:title => result["title"],
   			:id => result["id"],
   			:c_url => "https://news.ycombinator.com/item?id=#{result['id']}"
   		}

   		_items.push i
   	end

  	@items = _items.sort_by! { |k| k[:comments] }.reverse!
  end

  def headline
  	require 'net/http'
  	require 'json'

  	source = "https://hacker-news.firebaseio.com/v0/topstories.json"
   	resp = Net::HTTP.get_response(URI.parse(source))
   	data = resp.body
   	result = JSON.parse(data)
   	result = result[0..29]

   	_items = []
   	result.each do |item|
		source = "https://hacker-news.firebaseio.com/v0/item/#{item}.json"
   		resp = Net::HTTP.get_response(URI.parse(source))
   		data = resp.body
   		result = JSON.parse(data)

   		if result["descendants"]
   			_c = result["descendants"]
   		else
   			_c = 0
   		end

   		i = {
   			:comments => _c,
   			:url => result["url"],
   			:title => result["title"],
   			:title_len => result["title"].length,
   			:id => result["id"],
   			:c_url => "https://news.ycombinator.com/item?id=#{result['id']}"
   		}

   		_items.push i
   	end

  	@items = _items.sort_by! { |k| k[:title_len] }.reverse!
  end

  def domain
  	require 'net/http'
  	require 'json'
  	#require 'addressable/uri'
  	require 'uri'

  	source = "https://hacker-news.firebaseio.com/v0/topstories.json"
   	resp = Net::HTTP.get_response(URI.parse(source))
   	data = resp.body
   	result = JSON.parse(data)
   	result = result[0..29]

   	_items = []
   	result.each do |item|
		source = "https://hacker-news.firebaseio.com/v0/item/#{item}.json"
   		resp = Net::HTTP.get_response(URI.parse(source))
   		data = resp.body
   		result = JSON.parse(data)

   		if result["descendants"]
   			_c = result["descendants"]
   		else
   			_c = 0
   		end

   		if result["url"]
   			host = URI.parse(result["url"]).host
   			host = host.start_with?('www.') ? host[4..-1] : host
   		else
   			host = ""
   		end

   		i = {
   			:comments => _c,
   			:host => host,
   			:url => result["url"],
   			:title => result["title"],
   			:title_len => result["title"].length,
   			:id => result["id"],
   			:c_url => "https://news.ycombinator.com/item?id=#{result['id']}"
   		}

   		_items.push i
   	end

  	@items = _items.sort_by! { |k| k[:host] }
  end
end
