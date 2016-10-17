import React from 'react';
import ReactOnRails from 'react-on-rails';

import HelloWorld from '../containers/HelloWorld';

// TODO move to a common component register file
ReactOnRails.setOptions({
  traceTurbolinks: TRACE_TURBOLINKS,
});

const HelloWorldApp = (props) => (
  <HelloWorld {...props} />
);

// This is how react_on_rails can see the HelloWorldApp in the browser.
ReactOnRails.register({ HelloWorldApp });
