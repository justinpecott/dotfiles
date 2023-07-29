# Cognito

## Login URL Format

https://cognito.justinsweb.com/login?response_type=code&client_id=537onqc9fd2eb52pih1gu4hnlj&redirect_uri=http%3A%2F%2Flocalhost%3A3000%2Fcb
aka
https://praedictio.auth.eu-west-1.amazoncognito.com/login?response_type=code&client_id=(client_id)&redirect_uri=(encoded uri)

### It's not documented very well, but your URL also requires some parameters:

- client_id - relates to the app for the identity provider.
- redirect_url - should match your redirect url from the UserPool app settings.
- response_type - token (or code).
