#include <stdlib.h>
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern void v5 (signed short, unsigned int, unsigned char);
extern void (*v6) (signed short, unsigned int, unsigned char);
extern unsigned short v7 (unsigned int, signed char);
extern unsigned short (*v8) (unsigned int, signed char);
extern unsigned short v9 (unsigned int);
extern unsigned short (*v10) (unsigned int);
signed short v11 (unsigned int, signed short, unsigned int, unsigned int);
signed short (*v12) (unsigned int, signed short, unsigned int, unsigned int) = v11;
extern unsigned int v13 (signed char, signed int, signed int);
extern unsigned int (*v14) (signed char, signed int, signed int);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern signed char v17 (signed char);
extern signed char (*v18) (signed char);
extern signed int v19 (signed short, signed int, signed int, signed char);
extern signed int (*v20) (signed short, signed int, signed int, signed char);
signed char v21 (unsigned short, unsigned short);
signed char (*v22) (unsigned short, unsigned short) = v21;
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed char v25 (signed char);
extern signed char (*v26) (signed char);
void v27 (signed int, signed short);
void (*v28) (signed int, signed short) = v27;
extern unsigned char v29 (unsigned char, unsigned char);
extern unsigned char (*v30) (unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v60 = 4U;
signed int v59 = -3;
unsigned int v58 = 5U;

void v27 (signed int v61, signed short v62)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned int v65 = 0U;
signed char v64 = -3;
unsigned short v63 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (unsigned short v66, unsigned short v67)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed short v70 = -2;
unsigned int v69 = 7U;
signed short v68 = 0;
trace++;
switch (trace)
{
case 2: 
return 0;
case 4: 
return -3;
case 6: 
return 3;
case 8: 
{
unsigned int v71;
v71 = v23 ();
history[history_index++] = (int)v71;
}
break;
case 10: 
{
unsigned int v72;
v72 = v23 ();
history[history_index++] = (int)v72;
}
break;
case 12: 
return -4;
default: abort ();
}
}
}
}

signed short v11 (unsigned int v73, signed short v74, unsigned int v75, unsigned int v76)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned char v79 = 2;
signed int v78 = 0;
unsigned int v77 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
