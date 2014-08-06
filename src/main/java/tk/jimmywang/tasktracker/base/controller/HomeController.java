package tk.jimmywang.tasktracker.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by WangJin on 2014/8/6.
 */
@Controller
public class HomeController extends BaseController {

    @RequestMapping(value = "/")
    public ModelAndView index(){
        return new ModelAndView("index");
    }
}
