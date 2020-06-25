# Rtest_auth0
Testting auth0 in R shiny app.

Currently, it runs locally but when deployed to shinyapps.io it doesn't work and shows the "Callback URL mismatch."

The addresses in the auth0 settings seem ok, the problem shown in auth0 log is like if shinyapps.io is using random local host, which keeps on changing every time, making it impossible to define urls in auth0 setting.
