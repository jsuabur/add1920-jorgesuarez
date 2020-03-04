#!/usr/bin/env ruby

require 'telegram/bot'

token = %x[cat /etc/bot15/token].strip
bot_username = '@jsuabur_bot'

puts "[INFO] Running bot #{$0}..."

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    options = message.text.split(" ")
    if options[0] == "/hello"
      say = "Hello #{options[1]}"
      bot.api.send_message(chat_id: message.chat.id, text: say)
    elsif options[0] == "/bye"
      say = "Good Bye #{options[1]}"
      bot.api.send_message(chat_id: message.chat.id, text: say)
    elsif options[0] == "/help"
      say = "Usted esta visualizando los comandos posibles para interactuar conmigo:
      /help -> Ver la ayuda
      /hello -> Saludar
      /bye -> Despedirse
      /number -> Teclado numérico"
      bot.api.send_message(chat_id: message.chat.id, text: say)
    elsif options[0] == '/number'
      question = 'Seleccionar un número:'
      answers =
      Telegram::Bot::Types::ReplyKeyboardMarkup.new(
      keyboard: [
        ["1", "2", "3"],
        ["4", "5", "6"],
        ["7", "8", "9"],
        [" ", "0", " "]
      ],
      one_time_keyboard: true
      )
      bot.api.send_message(chat_id: message.chat.id, text: question, reply_markup: answers)
    end
  end
end
