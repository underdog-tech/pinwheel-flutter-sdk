package com.getpinwheel.pinwheel

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class NativeViewTest {
  private val prefix = NativeView.FRAGMENT_TAG_PREFIX

  @Test
  fun isStaleFragmentTag_returnsTrueForPluginTagWithoutLiveView() {
    assertTrue(NativeView.isStaleFragmentTag("${prefix}0", setOf("${prefix}1")))
  }

  @Test
  fun isStaleFragmentTag_returnsFalseForLiveTag() {
    assertFalse(NativeView.isStaleFragmentTag("${prefix}1", setOf("${prefix}1")))
  }

  @Test
  fun isStaleFragmentTag_returnsFalseForFragmentsNotOwnedByPlugin() {
    assertFalse(NativeView.isStaleFragmentTag("PinwheelFragment", emptySet()))
  }

  @Test
  fun isStaleFragmentTag_returnsFalseForUntaggedFragments() {
    assertFalse(NativeView.isStaleFragmentTag(null, emptySet()))
  }
}
