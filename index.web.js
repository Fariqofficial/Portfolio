import { AppRegistry } from 'react-native';
import App from './App';
import React from 'react';

AppRegistry.registerComponent('Portfolio', () => App);

const rootTag = document.getElementById('app-root') || document.getElementById('root');

if (rootTag) {
  AppRegistry.runApplication('Portfolio', {
    initialProps: {},
    rootTag: rootTag,
  });
}