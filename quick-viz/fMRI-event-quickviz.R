library('ggplot2')

eventFilePath <- '/Users/barilari/data/V5_high-res_pilot-1_raw/sub-pilot001/ses-001/func/sub-pilot001_ses-001_task-auditoryLocalizer_run-001_events.tsv'

eventFile <- read.table(file = eventFilePath, 
                        header = T)

summary(eventFile)

trial_type <- levels(eventFile$trial_type)

eventFile$y_axis <- if(eventFile$trial_type != 'trigger')


#### LOOP ACROSS BLOCKS

eventPlot <- ggplot()+
  geom_bar(data = eventFile, aes(x = ))


