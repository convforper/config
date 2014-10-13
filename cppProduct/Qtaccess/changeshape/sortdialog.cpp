

#include "sortdialog.h"

SortDialog::SortDialog(QWidget *parent) : QDialog(parent)
{
    setupUi(this);
    secondaryGroupBox->hide();
    tertiaryGroupBox->hide();

    // TODO what mean
    layout()->setSizeConstraint(QLayout::SetFixedSize);
    setColumnRange('A','Z');
}

void SortDialog::setColumnRange(QChar first,QChar last)
{
    primayColumCombo->clear();
    secondaryColumCombo->clear();
    tertiaryColumCombo->clear();

    secondaryColumCombo->addItem(tr("None"));
    tertiaryColumCombo->addItem(tr("None"));
    primayColumCombo->setMinimumSize(secondaryColumCombo->sizeHint());

    QChar ch = first;
    while (ch <= last)
    {
        primayColumCombo->addItem(QString(ch));
        secondaryColumCombo->addItem(QString(ch));
        tertiaryColumCombo->addItem(QString(ch));
        ch = ch.unicode() + 1;
    }
}
