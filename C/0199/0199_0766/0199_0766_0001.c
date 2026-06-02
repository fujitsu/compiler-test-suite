#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
unsigned short v3 (unsigned short, unsigned char, unsigned char, signed char);
unsigned short (*v4) (unsigned short, unsigned char, unsigned char, signed char) = v3;
extern signed char v5 (void);
extern signed char (*v6) (void);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
unsigned char v9 (void);
unsigned char (*v10) (void) = v9;
extern unsigned short v11 (unsigned int, unsigned char);
extern unsigned short (*v12) (unsigned int, unsigned char);
extern void v13 (void);
extern void (*v14) (void);
signed char v15 (unsigned char, signed char, signed short, unsigned char);
signed char (*v16) (unsigned char, signed char, signed short, unsigned char) = v15;
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
signed int v19 (void);
signed int (*v20) (void) = v19;
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed int v23 (unsigned int, unsigned int, unsigned char, unsigned short);
extern signed int (*v24) (unsigned int, unsigned int, unsigned char, unsigned short);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern void v27 (void);
extern void (*v28) (void);
extern unsigned short v29 (signed short, unsigned char, signed short);
extern unsigned short (*v30) (signed short, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v45 = 1;
unsigned short v44 = 6;
unsigned int v43 = 7U;

signed int v19 (void)
{
{
for (;;) {
signed char v48 = -2;
signed short v47 = 2;
signed int v46 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (unsigned char v49, signed char v50, signed short v51, unsigned char v52)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
unsigned int v55 = 7U;
unsigned int v54 = 0U;
signed char v53 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (void)
{
{
for (;;) {
signed short v58 = 2;
signed short v57 = 2;
unsigned int v56 = 4U;
trace++;
switch (trace)
{
case 1: 
return 5;
default: abort ();
}
}
}
}

unsigned short v3 (unsigned short v59, unsigned char v60, unsigned char v61, signed char v62)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed short v65 = 2;
signed char v64 = -1;
unsigned short v63 = 1;
trace++;
switch (trace)
{
case 3: 
return 3;
case 9: 
{
unsigned int v66;
unsigned char v67;
unsigned short v68;
v66 = 6U - 3U;
v67 = v60 + 3;
v68 = v11 (v66, v67);
history[history_index++] = (int)v68;
}
break;
case 11: 
return v63;
default: abort ();
}
}
}
}
