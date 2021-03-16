# install.packages("pacman")

library("ggplot2", "RColorBrewer", "ggthemes", "gridExtra", "extrafont")

# Check available fonts on your computer
font_import()
# loadfonts(device = "win") # This may take a few minutes


# Create a function 
my_theme <- function() {
  
  # Define colors for the chart
  palette <- brewer.pal("Greys", n=9)
  color.background = palette[1]
  color.grid.major = palette[3]
  color.panel = palette[1]
  color.axis.text = palette[9]
  color.axis.title = palette[9]
  color.title = palette[9]
  
  # Create basic construction of chart
  theme_bw(base_size = 12, base_family = "serif") + 
    
    # Set the entire chart region to white
    theme(panel.background = element_rect(fill = color.panel, color = color.background)) +
    theme(plot.background = element_rect(fill = color.background, color = color.background)) +
    
    # Format grid
    theme(panel.grid.major = element_line(color = color.grid.major, size=.25)) +
    theme(panel.grid.minor = element_blank()) +
    theme(axis.ticks = element_line(color = color.axis.text)) +
    
    # Format legend
    theme(legend.position = "bottom") +
    theme(legend.background = element_rect(fill = color.panel)) +
    theme(legend.title = element_text(size = 12,color = color.axis.title)) +
    theme(legend.text = element_text(size = 12, color = color.axis.title)) + 
    
    # Format title and axes labels these and tick marks
    theme(plot.title = element_text(color = color.title, size = 15, vjust = 0.5, hjust = 0, face = "bold")) +
    theme(axis.text.x = element_text(size = 12, color = color.axis.text)) +
    theme(axis.text.y = element_text(size = 12, color = color.axis.text)) +
    theme(axis.title.x = element_text(size = 14, color = color.axis.title, vjust=-1)) +
    theme(axis.title.y = element_text(size = 14, color = color.axis.title, vjust = 1.8)) +
    
    # Plot margins
    theme(plot.margin = unit(c(.5, .5, .5, .5), "cm"))
}


