# Errbit Helm Chart

**CAUTION**: This is a an early alpha release. It needs your input and feedback. ([see issues](https://github.com/tmaier/errbit-helm/issues))

> Errbit is a tool for collecting and managing errors from other applications
See <https://github.com/errbit/errbit>

## TL;DR;

```bash
$ helm repo add errbit https://tmaier.github.io/errbit-helm
$ helm install errbit/errbit-helm
```

## Introduction

This chart bootstraps an Errbit deployment on a [Kubernetes](http://kubernetes.io) cluster using the [Helm](https://helm.sh) package manager.

## Prerequisites

- Kubernetes 1.8+ with Beta APIs enabled

## Installing the Chart

First, add the relevant chart repository.

```bash
$ helm repo add errbit https://tmaier.github.io/errbit-helm
```

To install the chart with the release name `my-errbit`:

```bash
$ helm install --name my-errbit errbit/errbit-helm
```

The command deploys Errbit on the Kubernetes cluster in the default configuration. The [configuration](#configuration) section lists the parameters that can be configured during installation.

## Uninstalling the Chart

To uninstall/delete the `my-errbit` deployment:

```bash
$ helm delete my-errbit
```

The command removes all the Kubernetes components associated with the chart and deletes the release.

## Configuration

The following tables lists the configurable parameters of the PostgresSQL chart and their default values.

| Parameter | Description | Default |
| --------- | ----------- | ------- |
| `image` | `errbit` image repository | `errbit/errbit` |

Specify each parameter using the `--set key=value[,key=value]` argument to `helm install`. For example,

```bash
$ helm install --name my-errbit \
  --set image=my-image \
    errbit/errbit-helm
```

Alternatively, a YAML file that specifies the values for the parameters can be provided while installing the chart. For example,

```bash
$ helm install --name my-errbit -f values.yaml errbit/errbit-helm
```

> **Tip**: You can use the default [values.yaml](values.yaml)

## Author

[Tobias L. Maier](http://tobiasmaier.info) for [BauCloud GmbH](https://www.baucloud.com)
