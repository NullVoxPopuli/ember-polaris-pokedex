import PokemonGridItem from 'ember-embroider-pokedex/components/pokemon-grid-item';
import type IndexRoute from 'ember-embroider-pokedex/routes';
import { Request } from '@warp-drive/ember';
import {
  RouteTemplate,
  type RouteTemplateSignature,
} from 'ember-embroider-pokedex/utils/ember-route-template';
import Component from '@glimmer/component';
import LoadingBar from 'ember-embroider-pokedex/components/loading-bar';

type IndexTemplateSignature = RouteTemplateSignature<IndexRoute>;

@RouteTemplate
export default class IndexTemplate extends Component<IndexTemplateSignature> {
  <template>
    <Request @request={{@model.pokemonRequest}}>
      <:content as |PokemonContent|>
        <div
          class='grid grid-cols-2 gap-4 md:grid-cols-4 lg:grid-cols-6 xl:grid-cols-8'
        >
          {{#each PokemonContent.data as |pokemon|}}
            <PokemonGridItem @pokemon={{pokemon}} />
          {{/each}}
        </div>
      </:content>
      <:loading>
        <LoadingBar />
      </:loading>
    </Request>

    {{outlet}}

    {{! prettier-ignore }}
    <style>
      @keyframes reveal {
        from {
          opacity: 0;
          transform: scale(0.75);
        }
        to {
          opacity: 1;
          transform: scale(1);
        }
      }
      .revealing-image {
        /* Create View Timeline */
        view-timeline-name: --revealing-image;
        view-timeline-axis: block;

        /* Attach animation, linked to the  View Timeline */
        animation: linear reveal both;
        animation-timeline: --revealing-image;

        /* Tweak range when effect should run*/
        animation-range: entry 0% cover 25%;
      }
    </style>
  </template>
}
