class Carbon < FPM::Cookery::Recipe
  description 'Carbon c relay'

  name     'carbon-c-relay'
  version  '2.6'
  revision '1'
  homepage 'https://github.com/grobian/carbon-c-relay'
  source   "https://github.com/grobian/carbon-c-relay/archive/v#{version}.tar.gz"

  section      'monitoring'
  conflicts    'carbon-c-relay'

  def build
    make

  end

  def install
    %w(run log/carbon-c-relay).each { |p| var(p).mkpath }

    (etc/'carbon-c-relay').install_p(workdir/'carbon-c-relay.conf', 'relay.conf')

    (lib/'systemd/system').install_p(workdir/'carbon-c-relay.unit', 'carbon-c-relay.service')

    sbin.install ["relay"]

  end
end
