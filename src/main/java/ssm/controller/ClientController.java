package ssm.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import ssm.entity.Hosts;
import ssm.service.HostService;

@Controller

public class ClientController {
    @Autowired
    private HostService hostService;
    private static final Log logger = LogFactory.getLog(ClientController.class);

    @RequestMapping(value = "/show")
    public String Test(ModelMap modelMap){
        logger.info("进入test");
        modelMap.addAttribute("hosts",hostService.getList());
        return "Test";
    }
    @RequestMapping(value = "/addPage")
    public String addPage(){
        logger.info("进入add");
        return "add";
    }
    @RequestMapping(value = "/delete",method = RequestMethod.POST)
    public String delete(int[] id){
//        logger.info("hosts中的内容是 "+id);
//        int[] ids = null;
        for (int i : id) {
            logger.info("删除的元素是 " + i);
            hostService.deleteItem(i);
        }


        return "redirect:/show";
    }
    @RequestMapping(value = "/addItem", method=RequestMethod.POST)
    public String add(Hosts hosts){
        logger.info("进入add 内容是 "+hosts);
       hostService.addItem(hosts);
        return "redirect:/show";
    }

}
