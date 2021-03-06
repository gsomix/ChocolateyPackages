ChocolateyPackages
==================
This is my repository of all my Chocolatey packages, as recommended by Chocolatey documentation.

[Chocolatey](https://chocolatey.org/) is a package manager for Windows.

Feel free to contact me by email or through this repository issues page. Pull requests are welcome.

All package code is licensed under the terms of the MIT License.

Pack
----

To pack the package, issue the following command like this:

```console
> choco pack ./zola/zola.nuspec
```

To install the resulting package (for example, to test it):

```console
> choco install ./zola.0.10.0.nupkg -f
```

Push
----

To push the package to Chocolatey.org, invoke the following:

```console
> choco push ./zola.0.10.0.nupkg --api-key [your API key]
```