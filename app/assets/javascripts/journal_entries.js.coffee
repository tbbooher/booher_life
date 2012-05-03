$.getJSON "/journal_entries/journal_entry_data.json", (data) ->
  chart = new Highcharts.Chart(
    chart:
      renderTo: "entries_chart"
      type: "line"
      marginRight: 130
      marginBottom: 25

    title:
      text: "Monthly Average Temperature"
      x: -20

    subtitle:
      text: "Source: WorldClimate.com"
      x: -20

    xAxis:
      categories: [ "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" ]

    yAxis:
      title:
        text: "Temperature (Â°C)"

      plotLines: [
        value: 0
        width: 1
        color: "#808080"
      ]

    tooltip:
      formatter: ->
        "<b>" + @series.name + "</b><br/>" + @x + ": " + @y + "Â°C"

    legend:
      layout: "vertical"
      align: "right"
      verticalAlign: "top"
      x: -10
      y: 100
      borderWidth: 0

    series: data
  )