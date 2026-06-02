#include <stdio.h>
#include <stdlib.h>
static signed short v1 (signed int, unsigned char);
static signed short (*v2) (signed int, unsigned char) = v1;
extern signed int v3 (unsigned short, unsigned int);
extern signed int (*v4) (unsigned short, unsigned int);
static unsigned char v5 (signed short, signed short, signed char, unsigned int);
static unsigned char (*v6) (signed short, signed short, signed char, unsigned int) = v5;
signed short v7 (unsigned char, signed int, signed char, unsigned short);
signed short (*v8) (unsigned char, signed int, signed char, unsigned short) = v7;
extern unsigned int v9 (unsigned short);
extern unsigned int (*v10) (unsigned short);
extern void v11 (void);
extern void (*v12) (void);
static unsigned int v13 (unsigned char, signed int);
static unsigned int (*v14) (unsigned char, signed int) = v13;
extern unsigned int v15 (signed char, unsigned int, unsigned short);
extern unsigned int (*v16) (signed char, unsigned int, unsigned short);
extern signed short v17 (void);
extern signed short (*v18) (void);
signed short v19 (void);
signed short (*v20) (void) = v19;
extern signed char v21 (signed char, unsigned short, unsigned int, unsigned int);
extern signed char (*v22) (signed char, unsigned short, unsigned int, unsigned int);
extern unsigned int v23 (signed short, unsigned int, signed int, signed short);
extern unsigned int (*v24) (signed short, unsigned int, signed int, signed short);
signed short v25 (signed int);
signed short (*v26) (signed int) = v25;
extern unsigned int v27 (signed int, unsigned short);
extern unsigned int (*v28) (signed int, unsigned short);
extern signed short v29 (signed short);
extern signed short (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 2;
unsigned int v32 = 4U;
signed char v31 = 3;

signed short v25 (signed int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed short v37 = -3;
unsigned short v36 = 5;
signed int v35 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (void)
{
{
for (;;) {
signed char v40 = 2;
signed short v39 = 1;
signed char v38 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v13 (unsigned char v41, signed int v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed int v45 = -4;
unsigned int v44 = 0U;
signed char v43 = 3;
trace++;
switch (trace)
{
case 3: 
return 2U;
default: abort ();
}
}
}
}

signed short v7 (unsigned char v46, signed int v47, signed char v48, unsigned short v49)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned int v52 = 7U;
unsigned short v51 = 7;
unsigned int v50 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v5 (signed short v53, signed short v54, signed char v55, unsigned int v56)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
signed int v59 = 0;
unsigned short v58 = 6;
signed short v57 = 1;
trace++;
switch (trace)
{
case 11: 
return 5;
default: abort ();
}
}
}
}

static signed short v1 (signed int v60, unsigned char v61)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
signed char v64 = -4;
signed char v63 = -4;
signed int v62 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v65;
unsigned int v66;
signed int v67;
v65 = 7 + 1;
v66 = 4U + 1U;
v67 = v3 (v65, v66);
history[history_index++] = (int)v67;
}
break;
case 2: 
{
unsigned char v68;
signed int v69;
unsigned int v70;
v68 = v61 + v61;
v69 = v62 + 3;
v70 = v13 (v68, v69);
history[history_index++] = (int)v70;
}
break;
case 4: 
{
signed char v71;
unsigned short v72;
unsigned int v73;
unsigned int v74;
signed char v75;
v71 = v63 + v64;
v72 = 2 - 2;
v73 = 0U + 3U;
v74 = 1U - 2U;
v75 = v21 (v71, v72, v73, v74);
history[history_index++] = (int)v75;
}
break;
case 10: 
{
signed short v76;
signed short v77;
signed char v78;
unsigned int v79;
unsigned char v80;
v76 = -1 - -3;
v77 = 3 - 1;
v78 = 2 - v63;
v79 = 3U + 1U;
v80 = v5 (v76, v77, v78, v79);
history[history_index++] = (int)v80;
}
break;
case 12: 
return -3;
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
signed int v83;
unsigned char v84;
signed short v85;
v83 = -2 + 2;
v84 = 1 + 2;
v85 = v1 (v83, v84);
history[history_index++] = (int)v85;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
