using ProCat.Data;
using ProCat.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace ProCat.Controllers
{
    public class ProductController : Controller
    {
        private readonly ApplicationDbContext _context;
        public ProductController(ApplicationDbContext context)
        {
            _context = context;
        }
        public async Task<IActionResult> Index(int pageNumber=1)
        {
            return View(await PaginatedList<Product>.CreateAsync(_context.Products, pageNumber,5));
            //IEnumerable<Product> objCatlist = _context.Products;
            //return View(objCatlist);
        }

        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(Product procobj)
        {
            if (ModelState.IsValid)
            {
                _context.Products.Add(procobj);
                _context.SaveChanges();
                TempData["ResultOk"] = "Record Added Successfully !";
                return RedirectToAction("Index");
            }

            return View(procobj);
        }

        public IActionResult Edit(int? id)
        {
            if (id == null || id == 0)
            {
                return NotFound();
            }
            var procfromdb = _context.Products.Find(id);

            if (procfromdb == null)
            {
                return NotFound();
            }
            return View(procfromdb);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(Product procobj)
        {
            if (ModelState.IsValid)
            {
                _context.Products.Update(procobj);
                _context.SaveChanges();
                TempData["ResultOk"] = "Data Updated Successfully !";
                return RedirectToAction("Index");
            }

            return View(procobj);
        }

        public IActionResult Delete(int? id)
        {
            if (id == null || id == 0)
            {
                return NotFound();
            }
            var procfromdb = _context.Products.Find(id);
            _context.Products.Remove(procfromdb);
            _context.SaveChanges();

            TempData["ResultOk"] = "Data Deleted Successfully !";
            return RedirectToAction("Index");

            //if (procfromdb == null)
            //{
            //    return NotFound();
            //}
            //return View(procfromdb);
        }

        //[HttpDelete]
        //public IActionResult DeleteProd(int? id)
        //{
        //    var deleterecord = _context.Products.Find(id);
        //    if (deleterecord == null)
        //    {
        //        return NotFound();
        //    }
        //    _context.Products.Remove(deleterecord);
        //    _context.SaveChanges();
        //    TempData["ResultOk"] = "Data Deleted Successfully !";
        //    return RedirectToAction("Index");
        //}


    }
}