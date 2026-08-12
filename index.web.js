import React from 'react';
import { AppRegistry } from 'react-native';
import App from './App';

AppRegistry.registerComponent('Portfolio', () => App);

const rootTag = document.getElementById('app-root') || document.getElementById('root');

if (rootTag) {
  AppRegistry.runApplication('Portfolio', {
    initialProps: {},
    rootTag: rootTag,
  });
}