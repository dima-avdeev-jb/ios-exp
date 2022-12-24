package org.jetbrains.compose.demo.widgets.ui

import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material.MaterialTheme
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier

@Composable
internal fun MainView() {
    MaterialTheme {
        Box(Modifier.fillMaxSize()) {
            Text("Hello Compose", Modifier.align(Alignment.Center))
        }
    }
}

