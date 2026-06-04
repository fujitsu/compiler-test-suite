#include <stdio.h>
#include <stdlib.h>
static unsigned int v1 (signed int, unsigned int, unsigned short, unsigned int);
static unsigned int (*v2) (signed int, unsigned int, unsigned short, unsigned int) = v1;
extern unsigned char v3 (signed char, unsigned int, signed char);
extern unsigned char (*v4) (signed char, unsigned int, signed char);
static unsigned int v5 (signed char);
static unsigned int (*v6) (signed char) = v5;
extern signed char v7 (void);
extern signed char (*v8) (void);
unsigned short v9 (signed int);
unsigned short (*v10) (signed int) = v9;
unsigned short v11 (signed char);
unsigned short (*v12) (signed char) = v11;
extern unsigned int v13 (unsigned char, unsigned short, signed int, signed int);
extern unsigned int (*v14) (unsigned char, unsigned short, signed int, signed int);
extern unsigned short v15 (signed short, signed char);
extern unsigned short (*v16) (signed short, signed char);
extern void v17 (void);
extern void (*v18) (void);
unsigned int v19 (void);
unsigned int (*v20) (void) = v19;
extern void v21 (signed short);
extern void (*v22) (signed short);
extern unsigned short v25 (unsigned short, unsigned int);
extern unsigned short (*v26) (unsigned short, unsigned int);
signed int v27 (unsigned int, unsigned int, unsigned char);
signed int (*v28) (unsigned int, unsigned int, unsigned char) = v27;
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 3;
unsigned int v32 = 3U;
signed int v31 = 0;

signed int v27 (unsigned int v34, unsigned int v35, unsigned char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed char v39 = 3;
unsigned short v38 = 7;
signed char v37 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (void)
{
{
for (;;) {
signed int v42 = -2;
unsigned int v41 = 7U;
signed short v40 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (signed char v43)
{
history[history_index++] = (int)v43;
{
for (;;) {
signed int v46 = 3;
signed int v45 = -2;
unsigned int v44 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (signed int v47)
{
history[history_index++] = (int)v47;
{
for (;;) {
signed short v50 = 1;
unsigned int v49 = 2U;
unsigned short v48 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v5 (signed char v51)
{
history[history_index++] = (int)v51;
{
for (;;) {
unsigned char v54 = 5;
signed int v53 = -2;
unsigned int v52 = 5U;
trace++;
switch (trace)
{
case 7: 
return v52;
default: abort ();
}
}
}
}

static unsigned int v1 (signed int v55, unsigned int v56, unsigned short v57, unsigned int v58)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
unsigned char v61 = 1;
signed short v60 = -1;
signed short v59 = -1;
trace++;
switch (trace)
{
case 0: 
{
signed int v62;
v62 = v29 ();
history[history_index++] = (int)v62;
}
break;
case 2: 
{
signed int v63;
v63 = v29 ();
history[history_index++] = (int)v63;
}
break;
case 4: 
{
unsigned char v64;
unsigned short v65;
signed int v66;
signed int v67;
unsigned int v68;
v64 = v61 + v61;
v65 = v57 + v57;
v66 = v55 - v55;
v67 = v55 + 2;
v68 = v13 (v64, v65, v66, v67);
history[history_index++] = (int)v68;
}
break;
case 6: 
{
signed char v69;
unsigned int v70;
v69 = -1 + 3;
v70 = v5 (v69);
history[history_index++] = (int)v70;
}
break;
case 8: 
{
v17 ();
}
break;
case 12: 
return 5U;
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
signed int v73;
unsigned int v74;
unsigned short v75;
unsigned int v76;
unsigned int v77;
v73 = v31 - -1;
v74 = v32 - v32;
v75 = 2 - v33;
v76 = 5U - 0U;
v77 = v1 (v73, v74, v75, v76);
history[history_index++] = (int)v77;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
