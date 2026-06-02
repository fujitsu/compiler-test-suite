#include <stdlib.h>
signed short v1 (void);
signed short (*v2) (void) = v1;
unsigned short v3 (void);
unsigned short (*v4) (void) = v3;
extern signed short v5 (signed int);
extern signed short (*v6) (signed int);
static unsigned int v9 (void);
static unsigned int (*v10) (void) = v9;
signed char v11 (void);
signed char (*v12) (void) = v11;
unsigned int v13 (signed short, unsigned short, unsigned char);
unsigned int (*v14) (signed short, unsigned short, unsigned char) = v13;
extern signed int v15 (signed char, signed int, signed short, unsigned char);
extern signed int (*v16) (signed char, signed int, signed short, unsigned char);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern signed char v19 (unsigned char, signed int, signed char, signed int);
extern signed char (*v20) (unsigned char, signed int, signed char, signed int);
extern unsigned short v21 (unsigned short, unsigned int);
extern unsigned short (*v22) (unsigned short, unsigned int);
static unsigned short v23 (signed int);
static unsigned short (*v24) (signed int) = v23;
extern unsigned int v25 (unsigned short, signed short);
extern unsigned int (*v26) (unsigned short, signed short);
extern signed char v27 (signed char, signed int);
extern signed char (*v28) (signed char, signed int);
extern signed short v29 (unsigned int, unsigned char, unsigned char);
extern signed short (*v30) (unsigned int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v39 = 2;
unsigned int v38 = 2U;
signed int v37 = 1;

static unsigned short v23 (signed int v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
unsigned int v43 = 3U;
signed int v42 = -3;
unsigned int v41 = 1U;
trace++;
switch (trace)
{
case 6: 
{
signed char v44;
signed int v45;
signed char v46;
v44 = -2 + 0;
v45 = 0 + v42;
v46 = v27 (v44, v45);
history[history_index++] = (int)v46;
}
break;
case 14: 
return 4;
default: abort ();
}
}
}
}

unsigned int v13 (signed short v47, unsigned short v48, unsigned char v49)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned int v52 = 2U;
unsigned int v51 = 4U;
unsigned int v50 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (void)
{
{
for (;;) {
signed char v55 = -3;
signed short v54 = 0;
unsigned short v53 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v9 (void)
{
{
for (;;) {
unsigned int v58 = 1U;
signed short v57 = -2;
unsigned char v56 = 2;
trace++;
switch (trace)
{
case 3: 
return 1U;
case 5: 
{
signed int v59;
unsigned short v60;
v59 = -4 - 3;
v60 = v23 (v59);
history[history_index++] = (int)v60;
}
break;
case 15: 
return v58;
default: abort ();
}
}
}
}

unsigned short v3 (void)
{
{
for (;;) {
unsigned short v63 = 5;
unsigned int v62 = 2U;
unsigned short v61 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (void)
{
{
for (;;) {
signed char v66 = -3;
signed char v65 = -3;
signed char v64 = -4;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v67;
unsigned char v68;
unsigned char v69;
signed short v70;
v67 = 1U + 0U;
v68 = 6 - 4;
v69 = 3 + 0;
v70 = v29 (v67, v68, v69);
history[history_index++] = (int)v70;
}
break;
case 2: 
{
unsigned int v71;
v71 = v9 ();
history[history_index++] = (int)v71;
}
break;
case 4: 
{
unsigned int v72;
v72 = v9 ();
history[history_index++] = (int)v72;
}
break;
case 16: 
return 1;
default: abort ();
}
}
}
}
