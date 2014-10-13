/********************************************************************************
** Form generated from reading UI file 'sortdialog.ui'
**
** Created by: Qt User Interface Compiler version 5.3.2
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_SORTDIALOG_H
#define UI_SORTDIALOG_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QDialog>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QGroupBox>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QVBoxLayout>

QT_BEGIN_NAMESPACE

class Ui_Sortdialog
{
public:
    QGridLayout *gridLayout_4;
    QVBoxLayout *verticalLayout;
    QPushButton *okButton;
    QPushButton *cancelButton;
    QSpacerItem *verticalSpacer;
    QPushButton *moreButton;
    QGroupBox *secondaryGroupBox;
    QGridLayout *gridLayout_2;
    QLabel *label_3;
    QComboBox *secondaryColumCombo;
    QSpacerItem *horizontalSpacer_3;
    QLabel *label_4;
    QComboBox *secondaryOrderCombo;
    QGroupBox *tertiaryGroupBox;
    QGridLayout *gridLayout_3;
    QLabel *label_5;
    QComboBox *tertiaryColumCombo;
    QSpacerItem *horizontalSpacer_4;
    QLabel *label_6;
    QComboBox *tertiaryOrderCombo;
    QGroupBox *primaryGroupBox;
    QGridLayout *gridLayout;
    QLabel *label;
    QComboBox *primayColumCombo;
    QSpacerItem *horizontalSpacer;
    QLabel *label_2;
    QComboBox *primaryOrderCombo;
    QSpacerItem *verticalSpacer_2;

    void setupUi(QDialog *Sortdialog)
    {
        if (Sortdialog->objectName().isEmpty())
            Sortdialog->setObjectName(QStringLiteral("Sortdialog"));
        Sortdialog->resize(365, 391);
        Sortdialog->setMouseTracking(false);
        Sortdialog->setFocusPolicy(Qt::NoFocus);
        Sortdialog->setStyleSheet(QStringLiteral(""));
        gridLayout_4 = new QGridLayout(Sortdialog);
        gridLayout_4->setObjectName(QStringLiteral("gridLayout_4"));
        verticalLayout = new QVBoxLayout();
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        okButton = new QPushButton(Sortdialog);
        okButton->setObjectName(QStringLiteral("okButton"));

        verticalLayout->addWidget(okButton);

        cancelButton = new QPushButton(Sortdialog);
        cancelButton->setObjectName(QStringLiteral("cancelButton"));

        verticalLayout->addWidget(cancelButton);

        verticalSpacer = new QSpacerItem(20, 0, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout->addItem(verticalSpacer);

        moreButton = new QPushButton(Sortdialog);
        moreButton->setObjectName(QStringLiteral("moreButton"));
        moreButton->setCheckable(true);

        verticalLayout->addWidget(moreButton);


        gridLayout_4->addLayout(verticalLayout, 0, 1, 2, 1);

        secondaryGroupBox = new QGroupBox(Sortdialog);
        secondaryGroupBox->setObjectName(QStringLiteral("secondaryGroupBox"));
        secondaryGroupBox->setStyleSheet(QStringLiteral(""));
        gridLayout_2 = new QGridLayout(secondaryGroupBox);
        gridLayout_2->setObjectName(QStringLiteral("gridLayout_2"));
        label_3 = new QLabel(secondaryGroupBox);
        label_3->setObjectName(QStringLiteral("label_3"));

        gridLayout_2->addWidget(label_3, 0, 0, 1, 1);

        secondaryColumCombo = new QComboBox(secondaryGroupBox);
        secondaryColumCombo->setObjectName(QStringLiteral("secondaryColumCombo"));

        gridLayout_2->addWidget(secondaryColumCombo, 0, 1, 1, 1);

        horizontalSpacer_3 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout_2->addItem(horizontalSpacer_3, 0, 2, 1, 1);

        label_4 = new QLabel(secondaryGroupBox);
        label_4->setObjectName(QStringLiteral("label_4"));

        gridLayout_2->addWidget(label_4, 1, 0, 1, 1);

        secondaryOrderCombo = new QComboBox(secondaryGroupBox);
        secondaryOrderCombo->setObjectName(QStringLiteral("secondaryOrderCombo"));

        gridLayout_2->addWidget(secondaryOrderCombo, 1, 1, 1, 2);

        secondaryColumCombo->raise();
        label_3->raise();
        secondaryOrderCombo->raise();
        label_4->raise();

        gridLayout_4->addWidget(secondaryGroupBox, 2, 0, 1, 1);

        tertiaryGroupBox = new QGroupBox(Sortdialog);
        tertiaryGroupBox->setObjectName(QStringLiteral("tertiaryGroupBox"));
        tertiaryGroupBox->setStyleSheet(QStringLiteral(""));
        gridLayout_3 = new QGridLayout(tertiaryGroupBox);
        gridLayout_3->setObjectName(QStringLiteral("gridLayout_3"));
        label_5 = new QLabel(tertiaryGroupBox);
        label_5->setObjectName(QStringLiteral("label_5"));

        gridLayout_3->addWidget(label_5, 0, 0, 1, 1);

        tertiaryColumCombo = new QComboBox(tertiaryGroupBox);
        tertiaryColumCombo->setObjectName(QStringLiteral("tertiaryColumCombo"));

        gridLayout_3->addWidget(tertiaryColumCombo, 0, 1, 1, 1);

        horizontalSpacer_4 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout_3->addItem(horizontalSpacer_4, 0, 2, 1, 1);

        label_6 = new QLabel(tertiaryGroupBox);
        label_6->setObjectName(QStringLiteral("label_6"));

        gridLayout_3->addWidget(label_6, 1, 0, 1, 1);

        tertiaryOrderCombo = new QComboBox(tertiaryGroupBox);
        tertiaryOrderCombo->setObjectName(QStringLiteral("tertiaryOrderCombo"));

        gridLayout_3->addWidget(tertiaryOrderCombo, 1, 1, 1, 2);


        gridLayout_4->addWidget(tertiaryGroupBox, 3, 0, 1, 1);

        primaryGroupBox = new QGroupBox(Sortdialog);
        primaryGroupBox->setObjectName(QStringLiteral("primaryGroupBox"));
        primaryGroupBox->setContextMenuPolicy(Qt::NoContextMenu);
        primaryGroupBox->setAcceptDrops(false);
        primaryGroupBox->setToolTipDuration(-1);
        primaryGroupBox->setLayoutDirection(Qt::LeftToRight);
        primaryGroupBox->setAutoFillBackground(false);
        primaryGroupBox->setStyleSheet(QStringLiteral(""));
        primaryGroupBox->setAlignment(Qt::AlignJustify|Qt::AlignTop);
        primaryGroupBox->setFlat(false);
        primaryGroupBox->setCheckable(false);
        gridLayout = new QGridLayout(primaryGroupBox);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        gridLayout->setSizeConstraint(QLayout::SetDefaultConstraint);
        gridLayout->setVerticalSpacing(6);
        gridLayout->setContentsMargins(9, -1, -1, -1);
        label = new QLabel(primaryGroupBox);
        label->setObjectName(QStringLiteral("label"));

        gridLayout->addWidget(label, 0, 0, 1, 1);

        primayColumCombo = new QComboBox(primaryGroupBox);
        primayColumCombo->setObjectName(QStringLiteral("primayColumCombo"));

        gridLayout->addWidget(primayColumCombo, 0, 1, 1, 1);

        horizontalSpacer = new QSpacerItem(107, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout->addItem(horizontalSpacer, 0, 2, 1, 1);

        label_2 = new QLabel(primaryGroupBox);
        label_2->setObjectName(QStringLiteral("label_2"));

        gridLayout->addWidget(label_2, 1, 0, 1, 1);

        primaryOrderCombo = new QComboBox(primaryGroupBox);
        primaryOrderCombo->setObjectName(QStringLiteral("primaryOrderCombo"));

        gridLayout->addWidget(primaryOrderCombo, 1, 1, 1, 2);

        label_2->raise();
        primayColumCombo->raise();
        primaryOrderCombo->raise();
        label->raise();

        gridLayout_4->addWidget(primaryGroupBox, 0, 0, 1, 1);

        verticalSpacer_2 = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Maximum);

        gridLayout_4->addItem(verticalSpacer_2, 1, 0, 1, 1);


        retranslateUi(Sortdialog);
        QObject::connect(okButton, SIGNAL(clicked()), Sortdialog, SLOT(accept()));
        QObject::connect(cancelButton, SIGNAL(clicked()), Sortdialog, SLOT(reject()));
        QObject::connect(moreButton, SIGNAL(toggled(bool)), secondaryGroupBox, SLOT(setVisible(bool)));
        QObject::connect(moreButton, SIGNAL(toggled(bool)), tertiaryGroupBox, SLOT(setVisible(bool)));

        QMetaObject::connectSlotsByName(Sortdialog);
    } // setupUi

    void retranslateUi(QDialog *Sortdialog)
    {
        Sortdialog->setWindowTitle(QApplication::translate("Sortdialog", "Sort", 0));
        okButton->setText(QApplication::translate("Sortdialog", "OK", 0));
        cancelButton->setText(QApplication::translate("Sortdialog", "Cancel", 0));
        moreButton->setText(QApplication::translate("Sortdialog", "More", 0));
        secondaryGroupBox->setTitle(QApplication::translate("Sortdialog", "Secondary Key", 0));
        label_3->setText(QApplication::translate("Sortdialog", "Column:", 0));
        secondaryColumCombo->clear();
        secondaryColumCombo->insertItems(0, QStringList()
         << QApplication::translate("Sortdialog", "None", 0)
        );
        label_4->setText(QApplication::translate("Sortdialog", "Order:", 0));
        secondaryOrderCombo->clear();
        secondaryOrderCombo->insertItems(0, QStringList()
         << QApplication::translate("Sortdialog", "Ascending", 0)
         << QApplication::translate("Sortdialog", "Descending", 0)
        );
        tertiaryGroupBox->setTitle(QApplication::translate("Sortdialog", "Tertiary Key", 0));
        label_5->setText(QApplication::translate("Sortdialog", "Column:", 0));
        tertiaryColumCombo->clear();
        tertiaryColumCombo->insertItems(0, QStringList()
         << QApplication::translate("Sortdialog", "None", 0)
        );
        label_6->setText(QApplication::translate("Sortdialog", "Order:", 0));
        tertiaryOrderCombo->clear();
        tertiaryOrderCombo->insertItems(0, QStringList()
         << QApplication::translate("Sortdialog", "Ascending", 0)
         << QApplication::translate("Sortdialog", "Descending", 0)
        );
        primaryGroupBox->setTitle(QApplication::translate("Sortdialog", "Primary Key", 0));
        label->setText(QApplication::translate("Sortdialog", "Column:", 0));
        primayColumCombo->clear();
        primayColumCombo->insertItems(0, QStringList()
         << QApplication::translate("Sortdialog", "None", 0)
        );
        label_2->setText(QApplication::translate("Sortdialog", "Order:", 0));
        primaryOrderCombo->clear();
        primaryOrderCombo->insertItems(0, QStringList()
         << QApplication::translate("Sortdialog", "Ascending", 0)
         << QApplication::translate("Sortdialog", "Descending", 0)
        );
    } // retranslateUi

};

namespace Ui {
    class Sortdialog: public Ui_Sortdialog {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_SORTDIALOG_H
