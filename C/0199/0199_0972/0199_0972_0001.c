#include <stdlib.h>
extern signed int v1 (unsigned int, unsigned int);
extern signed int (*v2) (unsigned int, unsigned int);
extern signed int v3 (signed int);
extern signed int (*v4) (signed int);
extern signed int v5 (unsigned int, unsigned short, signed int);
extern signed int (*v6) (unsigned int, unsigned short, signed int);
extern signed char v7 (unsigned int, unsigned char, signed int, signed short);
extern signed char (*v8) (unsigned int, unsigned char, signed int, signed short);
unsigned short v9 (void);
unsigned short (*v10) (void) = v9;
static unsigned int v11 (signed int, unsigned short, signed short);
static unsigned int (*v12) (signed int, unsigned short, signed short) = v11;
extern void v13 (unsigned short, unsigned short);
extern void (*v14) (unsigned short, unsigned short);
signed int v15 (signed short, unsigned short, signed short);
signed int (*v16) (signed short, unsigned short, signed short) = v15;
signed short v19 (signed short, signed char, unsigned int);
signed short (*v20) (signed short, signed char, unsigned int) = v19;
extern signed int v21 (unsigned char, signed char, unsigned short, unsigned short);
extern signed int (*v22) (unsigned char, signed char, unsigned short, unsigned short);
extern unsigned int v23 (signed short);
extern unsigned int (*v24) (signed short);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v45 = -2;
signed int v44 = -2;
signed int v43 = -2;

signed short v19 (signed short v46, signed char v47, unsigned int v48)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
signed char v51 = 2;
unsigned int v50 = 3U;
unsigned short v49 = 3;
trace++;
switch (trace)
{
case 4: 
{
signed int v52;
unsigned short v53;
signed short v54;
unsigned int v55;
v52 = -1 - 2;
v53 = v49 - v49;
v54 = -4 + v46;
v55 = v11 (v52, v53, v54);
history[history_index++] = (int)v55;
}
break;
case 6: 
{
v29 ();
}
break;
case 8: 
{
signed int v56;
unsigned short v57;
signed short v58;
unsigned int v59;
v56 = -1 + -1;
v57 = 0 + 0;
v58 = v46 - v46;
v59 = v11 (v56, v57, v58);
history[history_index++] = (int)v59;
}
break;
case 10: 
{
v29 ();
}
break;
case 12: 
return v46;
default: abort ();
}
}
}
}

signed int v15 (signed short v60, unsigned short v61, signed short v62)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned int v65 = 6U;
unsigned short v64 = 6;
unsigned int v63 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v11 (signed int v66, unsigned short v67, signed short v68)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
signed char v71 = 3;
signed int v70 = -4;
signed int v69 = -1;
trace++;
switch (trace)
{
case 5: 
return 6U;
case 9: 
return 0U;
default: abort ();
}
}
}
}

unsigned short v9 (void)
{
{
for (;;) {
unsigned char v74 = 6;
signed short v73 = 3;
signed int v72 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
