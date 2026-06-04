#include <stdlib.h>
extern unsigned int v1 (unsigned char, signed int, signed short, signed int);
extern unsigned int (*v2) (unsigned char, signed int, signed short, signed int);
unsigned char v3 (signed int);
unsigned char (*v4) (signed int) = v3;
extern void v5 (unsigned short, unsigned short, unsigned char);
extern void (*v6) (unsigned short, unsigned short, unsigned char);
extern unsigned int v7 (unsigned char);
extern unsigned int (*v8) (unsigned char);
extern unsigned int v9 (signed char, unsigned short);
extern unsigned int (*v10) (signed char, unsigned short);
extern signed int v11 (unsigned short, signed short, unsigned char);
extern signed int (*v12) (unsigned short, signed short, unsigned char);
extern unsigned char v13 (signed short, signed char);
extern unsigned char (*v14) (signed short, signed char);
static signed int v15 (unsigned int);
static signed int (*v16) (unsigned int) = v15;
extern unsigned int v17 (unsigned int, unsigned char, signed int);
extern unsigned int (*v18) (unsigned int, unsigned char, signed int);
extern void v19 (void);
extern void (*v20) (void);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern void v27 (signed short, unsigned char, signed int);
extern void (*v28) (signed short, unsigned char, signed int);
extern signed int v29 (unsigned int);
extern signed int (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v65 = 5U;
unsigned char v64 = 6;
unsigned char v63 = 4;

static signed int v15 (unsigned int v66)
{
history[history_index++] = (int)v66;
{
for (;;) {
unsigned short v69 = 1;
unsigned short v68 = 7;
signed int v67 = 3;
trace++;
switch (trace)
{
case 4: 
return -4;
case 6: 
return v67;
default: abort ();
}
}
}
}

unsigned char v3 (signed int v70)
{
history[history_index++] = (int)v70;
{
for (;;) {
signed int v73 = -2;
unsigned short v72 = 0;
unsigned char v71 = 1;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v74;
signed int v75;
v74 = 7U + 7U;
v75 = v15 (v74);
history[history_index++] = (int)v75;
}
break;
case 5: 
{
unsigned int v76;
signed int v77;
v76 = 1U + 2U;
v77 = v15 (v76);
history[history_index++] = (int)v77;
}
break;
case 7: 
{
signed int v78;
v78 = v23 ();
history[history_index++] = (int)v78;
}
break;
case 9: 
return v71;
default: abort ();
}
}
}
}
