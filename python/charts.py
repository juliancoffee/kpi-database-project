import os
from typing import Tuple

import plotly.graph_objects as go
import chart_studio
import chart_studio.plotly as py

import db


def first(pair: Tuple):
    return pair[0]


def second(pair: Tuple):
    return pair[1]


def show(fig: go.Figure, name: str, form: str = "html", out_path=""):
    if form == "html":
        output = os.path.join(out_path, f"{name}.html")
        fig.write_html(output)
        print(f"Written to {output}")
    elif form == "web":
        py.plot(fig, filename=name)
    elif form == "show":
        fig.show()
    else:
        print(f"Unsupported output {form}")


def plot_hits() -> go.Figure:
    hits = db.hits()
    fig = go.Figure(
        [
            go.Bar(
                x=list(map(first, hits)),
                y=list(map(second, hits))
            )
        ]
    )
    return fig


def plot_parents(out: str = "html") -> go.Figure:
    parents = db.parent_distros()
    fig = go.Figure(
        data=[
            go.Pie(
                labels=list(map(first, parents)),
                values=list(map(second, parents))
            )
        ]
    )
    return fig


def plot_releases(out: str = "html") -> go.Figure:
    releases = db.releases()
    fig = go.Figure(
        data=go.Scatter(
            x=list(map(first, releases)),
            y=list(map(second, releases))
        )

    )
    return fig


if __name__ == "__main__":
    API_KEY = os.getenv("CHART_STUDIO_KEY")
    chart_studio.tools.set_credentials_file(
        username="juliancoffee",
        api_key=API_KEY
    )
    show(plot_hits(), 'distro_hits', out="web", out_path="../output/")
    show(plot_parents(), 'distro_parents', out="web", out_path="../output/")
    show(plot_releases(), 'distro_releases', out="web", out_path="../output/")
