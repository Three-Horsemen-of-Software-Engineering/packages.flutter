package io.scer.pdf.renderer.utils

import java.util.UUID.randomUUID

val randomID: String get() = randomUUID().toString()

val randomFilename: String get() = randomID.replace("-".toRegex(), "")
