pin "application", to: "application.js"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"

# --- ↓ FullCalendarの設定をここからコピー ↓ ---
pin "@fullcalendar/core", to: "https://ga.jspm.io/npm:@fullcalendar/core@6.1.14/index.js"
pin "@fullcalendar/daygrid", to: "https://ga.jspm.io/npm:@fullcalendar/daygrid@6.1.14/index.js"
pin "@fullcalendar/interaction", to: "https://ga.jspm.io/npm:@fullcalendar/interaction@6.1.14/index.js"
pin "@fullcalendar/multimonth", to: "https://ga.jspm.io/npm:@fullcalendar/multimonth@6.1.14/index.js"
pin "@fullcalendar/timegrid", to: "https://ga.jspm.io/npm:@fullcalendar/timegrid@6.1.14/index.js"
# FullCalendarが内部で利用するライブラリもpinします
pin "@fullcalendar/core/preact", to: "https://ga.jspm.io/npm:@fullcalendar/core@6.1.14/preact.js"
# --- ↑ ここまでコピー ↑ ---
