package com.rodcollab.cashkeep.shared

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform