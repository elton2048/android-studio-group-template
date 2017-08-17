package ${packageName}

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import com.bluelinelabs.conductor.Controller
import com.hannesdorfmann.mosby3.mvp.conductor.MvpController
import org.jetbrains.anko.AnkoContext

class ${className}Controller : ${className}View, MvpController<${className}View, ${className}Presenter>() {
    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup): View {
        val uiView = ${className}UI().createView(AnkoContext.create(container.context, this))

        return uiView
    }

    override fun createPresenter(): ${className}Presenter {
        return ${className}Presenter()
    }
}
