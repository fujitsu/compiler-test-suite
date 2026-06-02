#include <stdlib.h>
void v1 (signed char);
void (*v2) (signed char) = v1;
extern void v3 (unsigned char, unsigned short, signed int);
extern void (*v4) (unsigned char, unsigned short, signed int);
extern unsigned int v5 (signed int, signed int, signed short, unsigned int);
extern unsigned int (*v6) (signed int, signed int, signed short, unsigned int);
extern signed char v7 (void);
extern signed char (*v8) (void);
signed short v9 (unsigned int, signed char);
signed short (*v10) (unsigned int, signed char) = v9;
extern signed short v11 (unsigned int);
extern signed short (*v12) (unsigned int);
static signed short v13 (signed char, signed int, signed int, signed char);
static signed short (*v14) (signed char, signed int, signed int, signed char) = v13;
extern signed short v15 (unsigned char);
extern signed short (*v16) (unsigned char);
extern void v17 (signed short, unsigned int, unsigned int, signed short);
extern void (*v18) (signed short, unsigned int, unsigned int, signed short);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern signed short v23 (unsigned char, unsigned char, signed char);
extern signed short (*v24) (unsigned char, unsigned char, signed char);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed int v27 (signed char);
extern signed int (*v28) (signed char);
extern signed char v29 (signed short, signed char, unsigned int, signed char);
extern signed char (*v30) (signed short, signed char, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v49 = 3;
signed int v48 = -2;
signed int v47 = 2;

static signed short v13 (signed char v50, signed int v51, signed int v52, signed char v53)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
unsigned int v56 = 4U;
unsigned int v55 = 0U;
signed short v54 = 1;
trace++;
switch (trace)
{
case 9: 
return v54;
default: abort ();
}
}
}
}

signed short v9 (unsigned int v57, signed char v58)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
signed int v61 = 0;
unsigned int v60 = 3U;
unsigned char v59 = 5;
trace++;
switch (trace)
{
case 2: 
return -3;
default: abort ();
}
}
}
}

void v1 (signed char v62)
{
history[history_index++] = (int)v62;
{
for (;;) {
unsigned short v65 = 6;
signed char v64 = 3;
unsigned int v63 = 6U;
trace++;
switch (trace)
{
case 0: 
{
signed int v66;
signed int v67;
signed short v68;
unsigned int v69;
unsigned int v70;
v66 = 3 - 0;
v67 = 2 + -3;
v68 = 3 + -1;
v69 = v63 + v63;
v70 = v5 (v66, v67, v68, v69);
history[history_index++] = (int)v70;
}
break;
case 8: 
{
signed char v71;
signed int v72;
signed int v73;
signed char v74;
signed short v75;
v71 = v62 - v62;
v72 = -4 + -1;
v73 = 0 - 1;
v74 = v62 + -3;
v75 = v13 (v71, v72, v73, v74);
history[history_index++] = (int)v75;
}
break;
case 10: 
{
unsigned char v76;
signed short v77;
v76 = 3 + 0;
v77 = v15 (v76);
history[history_index++] = (int)v77;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
