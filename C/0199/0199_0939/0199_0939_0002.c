#include <stdlib.h>
extern signed short v1 (unsigned short, signed short, signed short, unsigned int);
extern signed short (*v2) (unsigned short, signed short, signed short, unsigned int);
unsigned short v3 (unsigned int, signed char, unsigned char);
unsigned short (*v4) (unsigned int, signed char, unsigned char) = v3;
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern unsigned short v9 (signed char);
extern unsigned short (*v10) (signed char);
extern void v11 (unsigned short, unsigned int, unsigned short);
extern void (*v12) (unsigned short, unsigned int, unsigned short);
unsigned int v13 (void);
unsigned int (*v14) (void) = v13;
extern signed char v15 (void);
extern signed char (*v16) (void);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned char v19 (signed char, unsigned short, unsigned short, signed char);
extern unsigned char (*v20) (signed char, unsigned short, unsigned short, signed char);
extern signed int v21 (signed short, signed char);
extern signed int (*v22) (signed short, signed char);
void v23 (unsigned char);
void (*v24) (unsigned char) = v23;
unsigned int v25 (unsigned char, signed char, signed int, unsigned int);
unsigned int (*v26) (unsigned char, signed char, signed int, unsigned int) = v25;
static signed char v27 (signed int);
static signed char (*v28) (signed int) = v27;
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v49 = 5;
unsigned int v48 = 3U;
unsigned int v47 = 3U;

static signed char v27 (signed int v50)
{
history[history_index++] = (int)v50;
{
for (;;) {
signed char v53 = 1;
signed char v52 = -4;
signed short v51 = 2;
trace++;
switch (trace)
{
case 2: 
return v52;
default: abort ();
}
}
}
}

unsigned int v25 (unsigned char v54, signed char v55, signed int v56, unsigned int v57)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
signed char v60 = 2;
unsigned char v59 = 6;
signed short v58 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v23 (unsigned char v61)
{
history[history_index++] = (int)v61;
{
for (;;) {
unsigned char v64 = 2;
unsigned int v63 = 4U;
signed short v62 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (void)
{
{
for (;;) {
unsigned int v67 = 6U;
signed char v66 = 0;
signed char v65 = -4;
trace++;
switch (trace)
{
case 1: 
{
signed int v68;
signed char v69;
v68 = -1 - -4;
v69 = v27 (v68);
history[history_index++] = (int)v69;
}
break;
case 3: 
return v67;
default: abort ();
}
}
}
}

unsigned short v3 (unsigned int v70, signed char v71, unsigned char v72)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
signed int v75 = -4;
unsigned int v74 = 0U;
unsigned int v73 = 7U;
trace++;
switch (trace)
{
case 5: 
{
signed char v76;
unsigned short v77;
v76 = 1 + -2;
v77 = v9 (v76);
history[history_index++] = (int)v77;
}
break;
case 9: 
{
signed char v78;
unsigned short v79;
v78 = -1 - -4;
v79 = v9 (v78);
history[history_index++] = (int)v79;
}
break;
case 11: 
return 1;
default: abort ();
}
}
}
}
