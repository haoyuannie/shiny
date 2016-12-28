output$distPlot <- renderPlot({
  
  # generate bins based on input$bins from ui.R
  x    <- faithful[, 2]
  bins <- seq(min(x), max(x), length.out = input$bins + 1)
  
  # draw the histogram with the specified number of bins
  hist(x, breaks = bins, col = 'darkgray', border = 'white')
  
})
output$randomnumber <- renderPlot({
  getmean = input$getmean
  getvar = input$getvar
  n = input$bins
  getnum = rnorm(n,mean = getmean,sd = getvar^0.5)
  plot(getnum)
})


output$showMap <- renderLeaflet({
  names(stores) <- c("id","lan","lat","tag")
  getId = which(stores$tag == input$Area)   
  lng = stores$lan[1] 
  lat = stores$lat[1] 
  zoom = input$zoom #拉近拉遠
  getmap <- leaflet() %>% addTiles() %>%
    setView(lng, lat, zoom)   %>%   #中心點在哪
    addMarkers(stores$lan[getId], stores$lat[getId])
  getmap
})







output$mapcheck <- renderText({    # check打勾有效
  print(input$Area)
})

output$store <- renderTable({
  ids = which(stores$tag == input$Area)
  stores[ids,]
  
})