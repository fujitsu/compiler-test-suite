#include <stdlib.h>
extern signed int v1 (unsigned char);
extern signed int (*v2) (unsigned char);
extern unsigned char v3 (signed int, signed char, signed char);
extern unsigned char (*v4) (signed int, signed char, signed char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned int v7 (signed int, signed char, signed short);
extern unsigned int (*v8) (signed int, signed char, signed short);
void v9 (unsigned short);
void (*v10) (unsigned short) = v9;
extern void v11 (signed char);
extern void (*v12) (signed char);
extern unsigned char v13 (signed int);
extern unsigned char (*v14) (signed int);
extern signed short v15 (unsigned int);
extern signed short (*v16) (unsigned int);
extern unsigned char v17 (unsigned char, unsigned char, signed char);
extern unsigned char (*v18) (unsigned char, unsigned char, signed char);
extern signed char v19 (signed short, unsigned short, unsigned short);
extern signed char (*v20) (signed short, unsigned short, unsigned short);
unsigned int v21 (signed short, unsigned int, signed char);
unsigned int (*v22) (signed short, unsigned int, signed char) = v21;
unsigned char v23 (unsigned char, signed int);
unsigned char (*v24) (unsigned char, signed int) = v23;
unsigned char v25 (signed short, unsigned short, signed char, unsigned short);
unsigned char (*v26) (signed short, unsigned short, signed char, unsigned short) = v25;
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
static signed int v29 (signed int);
static signed int (*v30) (signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v49 = 7;
signed short v48 = 0;
unsigned int v47 = 4U;

static signed int v29 (signed int v50)
{
history[history_index++] = (int)v50;
{
for (;;) {
signed int v53 = -4;
unsigned int v52 = 5U;
unsigned int v51 = 2U;
trace++;
switch (trace)
{
case 3: 
return -2;
case 7: 
return v53;
default: abort ();
}
}
}
}

unsigned char v25 (signed short v54, unsigned short v55, signed char v56, unsigned short v57)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
unsigned int v60 = 3U;
signed int v59 = 3;
unsigned int v58 = 0U;
trace++;
switch (trace)
{
case 6: 
{
signed int v61;
signed int v62;
v61 = v59 + 3;
v62 = v29 (v61);
history[history_index++] = (int)v62;
}
break;
case 8: 
return 0;
case 10: 
return 2;
default: abort ();
}
}
}
}

unsigned char v23 (unsigned char v63, signed int v64)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
signed short v67 = 0;
unsigned char v66 = 3;
unsigned int v65 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (signed short v68, unsigned int v69, signed char v70)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed short v73 = 3;
signed char v72 = 0;
unsigned int v71 = 1U;
trace++;
switch (trace)
{
case 2: 
{
signed int v74;
signed int v75;
v74 = 0 + 2;
v75 = v29 (v74);
history[history_index++] = (int)v75;
}
break;
case 4: 
return v69;
default: abort ();
}
}
}
}

void v9 (unsigned short v76)
{
history[history_index++] = (int)v76;
{
for (;;) {
unsigned int v79 = 5U;
unsigned short v78 = 0;
signed char v77 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
