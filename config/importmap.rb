# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "bootstrap", to: "https://ga.jspm.io/npm:bootstrap@5.3.2/dist/js/bootstrap.esm.js"
pin "@popperjs/core", to: "https://ga.jspm.io/npm:@popperjs/core@2.11.8/lib/index.js"
pin "sweetalert", to: "https://ga.jspm.io/npm:sweetalert@2.1.2/dist/sweetalert.min.js"
pin "process", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/process-production.js"
pin "sweetalert2", to: "https://cdn.jsdelivr.net/npm/sweetalert2@11.10.0/dist/sweetalert2.all.js"
pin "star-rating.js", to: "https://cdn.jsdelivr.net/npm/star-rating.js@4.3.0/dist/star-rating.esm.js"
