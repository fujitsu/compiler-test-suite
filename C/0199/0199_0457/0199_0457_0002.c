#include <stdlib.h>
extern unsigned char v3 (signed short, signed short, unsigned char, unsigned int);
extern unsigned char (*v4) (signed short, signed short, unsigned char, unsigned int);
extern unsigned int v5 (unsigned int, signed short, signed short);
extern unsigned int (*v6) (unsigned int, signed short, signed short);
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
extern signed int v9 (unsigned short, signed short);
extern signed int (*v10) (unsigned short, signed short);
unsigned char v11 (unsigned int, unsigned int);
unsigned char (*v12) (unsigned int, unsigned int) = v11;
void v13 (signed int);
void (*v14) (signed int) = v13;
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern unsigned char v17 (signed int);
extern unsigned char (*v18) (signed int);
extern unsigned char v19 (signed int);
extern unsigned char (*v20) (signed int);
extern unsigned short v21 (unsigned char, unsigned char, unsigned char, unsigned char);
extern unsigned short (*v22) (unsigned char, unsigned char, unsigned char, unsigned char);
extern signed char v23 (signed short, signed int, signed char);
extern signed char (*v24) (signed short, signed int, signed char);
extern signed int v25 (unsigned int);
extern signed int (*v26) (unsigned int);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
static signed short v29 (void);
static signed short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v79 = -3;
signed short v78 = 3;
unsigned char v77 = 7;

static signed short v29 (void)
{
{
for (;;) {
unsigned short v82 = 5;
signed short v81 = -3;
signed int v80 = -1;
trace++;
switch (trace)
{
case 6: 
{
unsigned short v83;
v83 = v27 ();
history[history_index++] = (int)v83;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}

void v13 (signed int v84)
{
history[history_index++] = (int)v84;
{
for (;;) {
unsigned char v87 = 5;
unsigned short v86 = 1;
unsigned short v85 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (unsigned int v88, unsigned int v89)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
signed char v92 = 1;
signed char v91 = 1;
unsigned short v90 = 5;
trace++;
switch (trace)
{
case 5: 
{
signed short v93;
v93 = v29 ();
history[history_index++] = (int)v93;
}
break;
case 13: 
return 1;
default: abort ();
}
}
}
}
