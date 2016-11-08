import React, { PropTypes } from 'react';
import AvatarWidget from '../components/AvatarWidget';

// Simple example of a React "smart" component
export default class Avatar extends React.Component {
  static propTypes = {
    url: PropTypes.string.isRequired, // this is passed from the Rails view
  };

  constructor(props, context) {
    super(props, context);

    // How to set initial state in ES6 class syntax
    // https://facebook.github.io/react/docs/reusable-components.html#es6-classes
    this.state = { url: this.props.url };
  }

  updateUrl(url) {
    this.setState({ url });
  }

  render() {
    return (
      <AvatarWidget url={this.state.url} updateUrl={e => this.updateUrl(e)} />
    );
  }
}
