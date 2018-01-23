defmodule Gun.Mixfile do
  use Mix.Project

  def project do
    [
      app: :gun,
      version: "1.0.0-pre.5",
      description: description(),
      deps: deps(),
      package: package()
    ]
  end

  defp description do
    """
    HTTP/1.1, HTTP/2 and Websocket client for Erlang/OTP.
    """
  end

  defp deps do
    [
      {:ranch, "~> 1.4"},
      {:cowlib, "~> 2.1"}
    ]
  end

  defp package do
    [
      maintainers: ["Loïc Hoguin"],
      licenses: ["ISC"],
      build_tools: ["rebar3"],
      links: %{"GitHub" => "https://github.com/ninenines/gun"},
      files: ["erlang.mk", "LICENSE", "Makefile", "README.asciidoc", "rebar.config", "src"]
    ]
  end
end