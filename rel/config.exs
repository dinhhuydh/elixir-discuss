use Mix.Releases.Config,
    # This sets the default release built by `mix release`
    default_release: :default,
    # This sets the default environment used by `mix release`
    default_environment: :dev

# For a full list of config options for both releases
# and environments, visit https://hexdocs.pm/distillery/configuration.html


# You may define one or more environments in this file,
# an environment's settings will override those of a release
# when building in that environment, this combination of release
# and environment configuration is called a profile

environment :dev do
  set dev_mode: true
  set include_erts: false
  set cookie: :"5Zx])U</:V1EiE2$t/u7SDHn)F5{<UgKHJ;??/BC9[i3ahT:QDtB~j.Ba3./n7q2"
end

environment :prod do
  set include_erts: true
  set include_src: false
  set cookie: :"gY(>YRat}T,p~&DhEoS:^mLW{c<a7Jln5inrJfNg|&@.sMt@3Z7V%5~eFd;0*s!D"
end

# You may define one or more releases in this file.
# If you have not set a default release, or selected one
# when running `mix release`, the first release in the file
# will be used by default

release :discuss do
  set version: current_version(:discuss)
end

