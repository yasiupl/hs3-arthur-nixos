{...}:
{
  users.users.allgreed = {
      isNormalUser = true;
      extraGroups = [ "wheel" "docker" ];
      openssh.authorizedKeys.keys = [
          "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINKqfsyBaA0RAsa0vyMs499OwkU1IBTKcFwPWuez34/z allgreed@connor"
          "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAII8GU/UML1uxe/IwoPC/+T4RgbzOga9IoUtJtB2Q3dM0 allgreed@terminator"
      ];
  };

  users.users.psuwala = {
      isNormalUser = true;
      extraGroups = [ "wheel" "docker" ];
      openssh.authorizedKeys.keys = [
          "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCg5FmxYTCUiGE3PwPNqbeDJ1Qare4nkg7VDoJc33q9rXnr1qEb883/ghN/aP0cFpBleXU9WQvnOfaj/uEMk2lJwqtgfhMlIJj5jT6X1A7DsAV72uu8404gyD2tlYE4H9iLvg6uZVVUNWz3jsb+RmOXdcub0I++oT1JqrD45MQHA0bR6CZSzKqbG9xbq7qpfYz+vbc5MFHu7lX++691TlZ9ZKYwPMZzHDz8qsxwAcWhcDF+fBALdmg4K1CNKkPy6y9SL/fGAun+21HiwS7AC4mb24VMX5dFtIx+Rj/WMheuTXFuV0fIw26dEdd1FD7lQaa9JZfvqKhc0OTN7ocr2Pex psuwala@MacBook-Pro-Piotr.local"
      ];
  };


  users.users.matik = {
      isNormalUser = true;
      extraGroups = [ "wheel" "docker" ];
      openssh.authorizedKeys.keys = [
          "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDAMX/R2Oh0hujOAt3lczvXKpf5YAcmaadA/aKozFuhXfI5RpTiIMF89fpNwok55Wi7uov8rV50Ib0fDKYeIjL8tGpetyFGE2BkIehxG/B1ZL5GvhTfJzCaAMVvw+tlzyko/96dRyaY0nEHUI6QJoAOf2KFcJ2DHC/Hkvk+6E1yOZy71QJjLKU5u0SCnZUxFIEOAYrNRdxXnQ/Y3vHvUtoBD2PD5hgXZzHoeY5L/AP+IGwKyoFtovLwJOZpizElPJTRUqnSRAzLX7UDtPJu6e7LYOpI1kUOeRYZJazC0sLHlfT4NaVFOySZl5sXqjMqkMJzQbvk+7T4hCs55RuxhuH5wsdnY7DBAv2Sl9vJhErAx80W4WO1FloUqsy1p+FbQ0vpvEGFwCoer6AzRJgOgWX1W/XNNN8ptoEpkmBs0oULnD+/G0QZnc4S1j+fJsw25GzhCENcVwFxdqBet9F31p4Nhn8+3DdLlT+GgETpTEKL1JpVJDDKnP+XLOjYAqpm1JNYGRbd6dR3aoef3piP0zDwRLPsa2VqPriOPPDcOgK41mFFpJsKaYox/ukb+mdLj7cfklKBz+Vi2XiKO/JyldlsgT+Z7+d90z8pizETxTH8cfK2NyZuv50LVXERKAMAOXuknY4A7J7D+zO9KbtHdH9nJppLwEVC+kVSXsYhnPdX0Q== matik@y"
        ];
  };


  users.users.critbit = {
      isNormalUser = true;
      extraGroups = [ "wheel" "docker" ];
      openssh.authorizedKeys.keys = [
          "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCebJpdjaPXKB2gscm6gvoVSLe+ci2Gd6xJiZpYy+37UkD9+wfJ46tXDRT7qNZnIGa20ySAt+vq+oWVe2RRtLo2hWYPieAfauawhhOVuXtjnN9cuJB3TtNcl7A8ZyvPwQbSxszdueXjUhYD/I5d082cx1eC4dzVM2pw33K2npUAlIXgM3WqBiMkgoL1eEnin7xlTIIu/7RaF4Thm2TNyGRQzRnWtXssgh0B9bd5FvPQ4Ywkbac9bR5gjUurPBP18Cy/oJGjrKs/JUALgxg9mD8F8U376b7Inxz3eKINtJZctEvzt2/Wz32PZORVGjNeGJ350BYXovi1zhqwO8gX1RZP vue95@Vue700"
      ];
  };


  users.users.not7cd = {
      isNormalUser = true;
      openssh.authorizedKeys.keys = [
      "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDjIi2qvirrTFSrXHrdHlbAqX7wCE2+0iXWFhs7jClw6RPgTbdLjTKjHGFYoA5OTBIDTSXHfRwmM0oLg7nYwY+VeJvHPlJwxx8INBzUYOL3Q0PgBZ1kcSMoZIQZubzBOvb7FMoRCggpzeQd2XGlp/sF2FkF3K3Vw9Zx5CTmtUoyWxpX5lOUg/ujaY4JP4HXTb4ehzItIv//DoTug3MMFEpqd2Ki7qWpkzdZb8YDri8rnfdjelgdl3RSUczraT369RlZKWuOLvR2BdNzZd48CJzJDRg/EIZXwJ8/luhgZlXeQBESfvccbdXdn/4sAa84DTz/+G6uANiN9fVY2m7bCaMFDiYPvB6xJfjfzIujW633Dh9gnTiDnxYWHIvOFKhvq7Ada4B+HELB7xZW7u1dQlHjoIDvbUA2uAQgJ4g64hhUFM5xr5fdInaZeGZratYSs9UDkyTYk46zYwCmL9K2fjLMcZQMIgjM5/V7cbKVm61hga+ID9j8AOCEcWgze15V2A+q7yFAmYd5VQswNgVyGW+ZHOf4HdgjzWtbztcQir54aNsRkn0JakANNH6a9fxdHOJ9IqGgPn9cvDpHnXKA1nIWJcRWeN3f4UZxeWA7bIHOE8LQD4YDDufDNMyd8OHKcsxlUIsTmjiMBZbwCl/06KVpG14iYLiqYqGIKbtFETnrrw== \"not7cd\""
      ];
  };


  users.users.yasiu = {
      isNormalUser = true;
      extraGroups = [ "wheel" "docker" ];
      openssh.authorizedKeys.keys = [
      "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCcXfaXRjluHWYW3xkX3hXK/dr/b1epoqnOz+2+AErxb2aNXUohLoYx80Jrz7mSDFIYYN4VVXqu07FckMNlIvcHRXueZ5VD33Rs3bzk4CQc77m0BrXIendzo/X3xmH0WoxZbDeWvKbY3QtCjM1SRODhvRjtlkId31NVF7yyQZCLKz8AvUwkgNF8MHlcZo8MQcZApWKE4TWRlbZUfBLciEdtiFu2TJrhGjuOU+T6qExoPxLWGB690FPpqQdk1tdA+ZRvj7R2+lVr5MzNTZe3GwJgWKAkgLGUKrZl814VS/cZjbSrxmDDh/bRV2gtchm51Gk0xYXRI+S50KZC9u3gR0yZQrxX68ONXtDafb5qZPKwueGNrlmxsQ0c5wSd3LQLQ8WqoJ7JXQJIV+f4JIlysJRnqj0kDgFkJgE7NvgOTUEpSi6t3q6mWNwqA7QxZpqkvXft2ZkzQnUfbOdfkECSWjwNuHPxN0qvGq2nzRL35nNnTf7AwqOQEWoluWtxPhihNKBYz3hj1pCv6xpG8ET/dTVeDe4cIYOKQyKbB9KcQ3aAB6m2ts9gXXfHWuC7qjs4y7nmVjRB6dMCTKjIQ0A6orSKc79g3pHDCuGnCepBc0lg8jF+3rJ/ME+YdGxr703+QUPNLsNjVjMXvrVqu7Lm/Amh01k5kLtbo374Q4fUGiTvYQ== contact@yasiu.pl"
      ];
    };
}
