#include <stdlib.h>
extern void v3 (unsigned int, signed char, signed short);
extern void (*v4) (unsigned int, signed char, signed short);
extern signed char v5 (signed char, unsigned short, signed short);
extern signed char (*v6) (signed char, unsigned short, signed short);
void v7 (unsigned char);
void (*v8) (unsigned char) = v7;
extern signed int v9 (unsigned int, signed short, signed int);
extern signed int (*v10) (unsigned int, signed short, signed int);
extern signed short v11 (signed char, unsigned char, signed short, signed char);
extern signed short (*v12) (signed char, unsigned char, signed short, signed char);
signed char v13 (unsigned int);
signed char (*v14) (unsigned int) = v13;
extern unsigned char v15 (unsigned short, signed char, unsigned short);
extern unsigned char (*v16) (unsigned short, signed char, unsigned short);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern signed char v19 (unsigned short, signed int, unsigned char, unsigned char);
extern signed char (*v20) (unsigned short, signed int, unsigned char, unsigned char);
extern void v21 (unsigned int, signed int);
extern void (*v22) (unsigned int, signed int);
extern unsigned char v23 (unsigned char, signed char, unsigned char, signed int);
extern unsigned char (*v24) (unsigned char, signed char, unsigned char, signed int);
unsigned short v25 (signed int, signed short);
unsigned short (*v26) (signed int, signed short) = v25;
extern unsigned int v27 (signed int, unsigned int);
extern unsigned int (*v28) (signed int, unsigned int);
extern signed char v29 (signed int, signed int, signed int, unsigned int);
extern signed char (*v30) (signed int, signed int, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v95 = 1;
signed short v94 = -2;
signed char v93 = -1;

unsigned short v25 (signed int v96, signed short v97)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned char v100 = 4;
signed char v99 = 1;
unsigned short v98 = 5;
trace++;
switch (trace)
{
case 3: 
return v98;
case 5: 
return 4;
case 9: 
return v98;
case 11: 
return v98;
default: abort ();
}
}
}
}

signed char v13 (unsigned int v101)
{
history[history_index++] = (int)v101;
{
for (;;) {
signed char v104 = -2;
signed char v103 = -4;
signed char v102 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (unsigned char v105)
{
history[history_index++] = (int)v105;
{
for (;;) {
unsigned short v108 = 1;
unsigned int v107 = 1U;
signed short v106 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
