package tk.jimmywang.tasktracker.form.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by WangJin on 2014/8/6.
 */
@Controller
@RequestMapping(value = "/form")
public class FormController {

    @RequestMapping(value = "/index")
    public ModelAndView index(){
        ModelAndView mav = new ModelAndView("form/index");
        return mav;
    }


}
