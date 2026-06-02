#include <stdio.h>
#include <stdlib.h>
signed char v1 (void);
signed char (*v2) (void) = v1;
static unsigned short v3 (unsigned int, unsigned short, signed short);
static unsigned short (*v4) (unsigned int, unsigned short, signed short) = v3;
extern unsigned char v5 (unsigned char, signed short, unsigned int);
extern unsigned char (*v6) (unsigned char, signed short, unsigned int);
static signed int v7 (unsigned int, signed char, unsigned char);
static signed int (*v8) (unsigned int, signed char, unsigned char) = v7;
extern signed char v9 (unsigned short, unsigned int, unsigned short);
extern signed char (*v10) (unsigned short, unsigned int, unsigned short);
extern unsigned short v11 (unsigned int);
extern unsigned short (*v12) (unsigned int);
extern void v13 (signed short, signed int, unsigned char);
extern void (*v14) (signed short, signed int, unsigned char);
extern signed short v15 (signed char, signed short);
extern signed short (*v16) (signed char, signed short);
signed short v17 (unsigned char, unsigned int);
signed short (*v18) (unsigned char, unsigned int) = v17;
signed char v19 (unsigned int, signed short, signed short);
signed char (*v20) (unsigned int, signed short, signed short) = v19;
extern signed char v21 (unsigned char, unsigned short, unsigned char);
extern signed char (*v22) (unsigned char, unsigned short, unsigned char);
void v23 (signed char);
void (*v24) (signed char) = v23;
extern signed char v25 (signed char, signed short, unsigned char);
extern signed char (*v26) (signed char, signed short, unsigned char);
extern unsigned char v27 (unsigned char, unsigned short, signed char);
extern unsigned char (*v28) (unsigned char, unsigned short, signed char);
static signed short v29 (void);
static signed short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 5;
signed int v32 = 0;
signed char v31 = -1;

static signed short v29 (void)
{
{
for (;;) {
signed char v36 = 1;
signed int v35 = -1;
unsigned short v34 = 6;
trace++;
switch (trace)
{
case 3: 
return -4;
case 5: 
return -2;
default: abort ();
}
}
}
}

void v23 (signed char v37)
{
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = 1;
unsigned short v39 = 7;
signed int v38 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (unsigned int v41, signed short v42, signed short v43)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned int v46 = 3U;
signed short v45 = -1;
signed char v44 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (unsigned char v47, unsigned int v48)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
unsigned short v51 = 2;
signed char v50 = 0;
unsigned char v49 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v7 (unsigned int v52, signed char v53, unsigned char v54)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
unsigned short v57 = 1;
unsigned int v56 = 7U;
unsigned char v55 = 6;
trace++;
switch (trace)
{
case 9: 
{
signed char v58;
signed short v59;
signed short v60;
v58 = -2 - v53;
v59 = 1 - -4;
v60 = v15 (v58, v59);
history[history_index++] = (int)v60;
}
break;
case 11: 
return 0;
default: abort ();
}
}
}
}

static unsigned short v3 (unsigned int v61, unsigned short v62, signed short v63)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
unsigned char v66 = 3;
signed short v65 = -3;
signed char v64 = -2;
trace++;
switch (trace)
{
case 7: 
return v62;
default: abort ();
}
}
}
}

signed char v1 (void)
{
{
for (;;) {
unsigned char v69 = 6;
unsigned int v68 = 1U;
unsigned char v67 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v70;
unsigned short v71;
signed char v72;
unsigned char v73;
v70 = 0 + v67;
v71 = 1 - 7;
v72 = -1 - -3;
v73 = v27 (v70, v71, v72);
history[history_index++] = (int)v73;
}
break;
case 2: 
{
signed short v74;
v74 = v29 ();
history[history_index++] = (int)v74;
}
break;
case 4: 
{
signed short v75;
v75 = v29 ();
history[history_index++] = (int)v75;
}
break;
case 6: 
{
unsigned int v76;
unsigned short v77;
signed short v78;
unsigned short v79;
v76 = v68 + v68;
v77 = 5 - 1;
v78 = 3 - 2;
v79 = v3 (v76, v77, v78);
history[history_index++] = (int)v79;
}
break;
case 8: 
{
unsigned int v80;
signed char v81;
unsigned char v82;
signed int v83;
v80 = v68 + 5U;
v81 = 0 + -1;
v82 = 1 + v67;
v83 = v7 (v80, v81, v82);
history[history_index++] = (int)v83;
}
break;
case 12: 
return -3;
case 14: 
return 2;
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed char v86;
v86 = v1 ();
history[history_index++] = (int)v86;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
