class ToppageController < ApplicationController
    def index
        require 'open-uri'
        require 'json'
        #require 'addressable/uri'
        
        # 1.urlを解析する
        url = URI.parse URI.encode "http://wikipedia.simpleapi.net/api?keyword=野球&output=json"
        #url = URI.parse("http://wikipedia.simpleapi.net/api?keyword=TCP/IP")
        # 2.httpの通信を設定する
        # 通信先のホストやポートを設定
        results = JSON.parse(open(url).read, {symbolize_names: true})
        @title=[]
        results.each do |res|
        title= res["title"].to_s
        @title.push(title)
        end
        puts @title
        #[0]["title"]
        #https = Net::HTTP.new(url.host, url.inferred_port)
        # httpsで通信する場合、use_sslをtrueにする
        #https.use_ssl = true
        # 3.リクエストを作成する
        #req = Net::HTTP::Get.new(url.path)
        # 4.リクエストを投げる/レスポンスを受け取る
        #res = https.request(req)
        # 5.データを変換する
        #hash = JSON.parse(res.body)
        # 結果を出力
        #puts hash["results"][0]["title"]
    end
end
