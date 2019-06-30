
require "uri"
require "base64"
require "pp"

# 第一引数で受け取ったcookieの値をデコードする
session_in_cookie = ARGV[0]

# URI デコード、-- の前を取り出し
session_base64, digest = URI.decode(session_in_cookie).split("--")

# Base64 デコードして Marshal.load でオブジェクト復元
pp Marshal.load(Base64.decode64(session_base64))
