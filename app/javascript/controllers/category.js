// app/javascript/controllers/category_controller.js

import { Controller } from 'stimulus';

export default class extends Controller {
  static targets = ['categoryName', 'cardProduct'];

  connect() {
    this.showSkillsByCategory();
  }

  showSkillsByCategory() {
    const category = this.currentCategoryName();
    this.hideAllSkills();
    this.showSkillsByCategoryName(category);
  }

  currentCategoryName() {
    return this.categoryNameTargets.find((name) => name.classList.contains('active')).textContent;
  }

  hideAllSkills() {
    this.cardProductTargets.forEach((card) => {
      card.classList.add('hidden');
    });
  }

  showSkillsByCategoryName(category) {
    this.cardProductTargets.forEach((card) => {
      if (card.dataset.category === category) {
        card.classList.remove('hidden');
      }
    });
  }
}
