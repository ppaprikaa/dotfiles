local vim = vim

Args = {
   sunriseHour = 8,
   sunsetHour = 17,
   utcDelta = 6
}

function SetThemeBasedOnDayTime(t)
   setmetatable(t,{__index=Args})
   local sunriseHour, sunsetHour, utcDelta = t.sunriseHour, t.sunsetHour, t.utcDelta

   local currentDateAndTimeTable = os.date("!*t")
   local currentDayTimeHour = currentDateAndTimeTable.hour + utcDelta % 24
   if currentDayTimeHour >= sunriseHour and currentDayTimeHour < sunsetHour then
      vim.o.background = "light"
      vim.cmd("colorscheme vscode")
   else
      vim.o.background = "dark"
      vim.cmd("colorscheme kanagawa-dragon")
   end
end
