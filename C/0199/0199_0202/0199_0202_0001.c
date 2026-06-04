#include <stdlib.h>
extern void v1 (signed char, signed short, unsigned int);
extern void (*v2) (signed char, signed short, unsigned int);
unsigned short v3 (unsigned int, signed char);
unsigned short (*v4) (unsigned int, signed char) = v3;
extern unsigned short v5 (signed char, signed char);
extern unsigned short (*v6) (signed char, signed char);
extern void v7 (signed short);
extern void (*v8) (signed short);
extern signed int v9 (signed int, signed short);
extern signed int (*v10) (signed int, signed short);
extern unsigned int v11 (unsigned short, unsigned int, signed short);
extern unsigned int (*v12) (unsigned short, unsigned int, signed short);
extern void v13 (unsigned short);
extern void (*v14) (unsigned short);
signed char v15 (signed int, signed short, signed short, signed int);
signed char (*v16) (signed int, signed short, signed short, signed int) = v15;
extern unsigned int v19 (unsigned short);
extern unsigned int (*v20) (unsigned short);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed int v23 (void);
extern signed int (*v24) (void);
signed int v25 (unsigned int, signed short);
signed int (*v26) (unsigned int, signed short) = v25;
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern void v29 (unsigned short);
extern void (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v48 = 2U;
signed short v47 = 3;
signed int v46 = 1;

signed int v25 (unsigned int v49, signed short v50)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
signed char v53 = 3;
signed short v52 = -2;
signed int v51 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (signed int v54, signed short v55, signed short v56, signed int v57)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
signed short v60 = -3;
unsigned int v59 = 2U;
signed int v58 = -1;
trace++;
switch (trace)
{
case 9: 
return 1;
case 11: 
return 1;
default: abort ();
}
}
}
}

unsigned short v3 (unsigned int v61, signed char v62)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed short v65 = 0;
unsigned char v64 = 7;
signed char v63 = 3;
trace++;
switch (trace)
{
case 5: 
{
signed short v66;
v66 = v21 ();
history[history_index++] = (int)v66;
}
break;
case 7: 
{
unsigned short v67;
unsigned int v68;
signed short v69;
unsigned int v70;
v67 = 6 - 0;
v68 = 3U + 5U;
v69 = -2 - -1;
v70 = v11 (v67, v68, v69);
history[history_index++] = (int)v70;
}
break;
case 13: 
return 1;
default: abort ();
}
}
}
}
