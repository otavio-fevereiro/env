sudo kill -9 $(sudo lsof -t -i:9001)
lein test :only integration.screens.dashboard.dashboard/obtaining-dashboard-widgets

