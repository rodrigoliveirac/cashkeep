package com.rodcollab.cashkeep.shared

class Greeting {
    private val platform: Platform = getPlatform()

    fun greet(): String {
        return "Hello, ${platform.name} using kmp!"
    }
}