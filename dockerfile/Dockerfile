FROM errbit/errbit:v0.8.0

LABEL \
  maintainer="Tobias L. Maier <me@tobiasmaier.info>" \
  org.label-schema.schema-version="1.0" \
  org.label-schema.name="Errbit with Entrypoint script" \
  org.label-schema.vcs-url="https://github.com/tmaier/errbit-helm"

COPY docker-entrypoint.sh /usr/local/bin/

CMD ["puma","-C","config/puma.default.rb"]
ENTRYPOINT ["docker-entrypoint.sh"]
