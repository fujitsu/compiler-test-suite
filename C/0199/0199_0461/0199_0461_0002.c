#include <stdlib.h>
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed short v7 (unsigned short, signed short, signed char);
extern signed short (*v8) (unsigned short, signed short, signed char);
extern void v9 (void);
extern void (*v10) (void);
extern unsigned char v11 (signed short, signed char, unsigned int, signed int);
extern unsigned char (*v12) (signed short, signed char, unsigned int, signed int);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned short v15 (signed char, unsigned int);
extern unsigned short (*v16) (signed char, unsigned int);
signed int v17 (signed short, signed int, signed char);
signed int (*v18) (signed short, signed int, signed char) = v17;
extern void v19 (signed int, signed char, signed short, signed short);
extern void (*v20) (signed int, signed char, signed short, signed short);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned short v23 (unsigned int);
extern unsigned short (*v24) (unsigned int);
void v25 (void);
void (*v26) (void) = v25;
extern unsigned char v29 (unsigned short, unsigned char);
extern unsigned char (*v30) (unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v99 = 4;
signed char v98 = -3;
unsigned char v97 = 4;

void v25 (void)
{
{
for (;;) {
unsigned short v102 = 7;
signed int v101 = 3;
unsigned short v100 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (signed short v103, signed int v104, signed char v105)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned char v108 = 1;
unsigned int v107 = 5U;
signed short v106 = -2;
trace++;
switch (trace)
{
case 7: 
{
unsigned short v109;
unsigned char v110;
unsigned char v111;
v109 = 6 + 5;
v110 = 0 + 1;
v111 = v29 (v109, v110);
history[history_index++] = (int)v111;
}
break;
case 9: 
{
unsigned short v112;
unsigned char v113;
unsigned char v114;
v112 = 3 - 3;
v113 = v108 + 3;
v114 = v29 (v112, v113);
history[history_index++] = (int)v114;
}
break;
case 11: 
return 0;
default: abort ();
}
}
}
}
