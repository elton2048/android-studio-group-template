package ${packageName}

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import com.bluelinelabs.conductor.Controller
import org.jetbrains.anko.AnkoContext

class ${className}Controller : Controller() {
    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup): View {
        val view = ${className}UI().createView(AnkoContext.Companion.create(container.context, this))

        return view
    }
}
